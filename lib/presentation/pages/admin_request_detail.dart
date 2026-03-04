import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_request/admin_request_bloc.dart';

class AdminRequestDetailPage extends StatefulWidget {
  final int id;

  const AdminRequestDetailPage({super.key, required this.id});

  @override
  State<AdminRequestDetailPage> createState() =>
      _AdminRequestDetailPageState();
}

class _AdminRequestDetailPageState
    extends State<AdminRequestDetailPage> {

  @override
  void initState() {
    super.initState();

    context.read<AdminRequestBloc>().add(
      AdminRequestEvent.getDetail(widget.id),
    );
  }

  Widget statusChip(String status) {

    Color color;

    switch (status) {
      case "approved":
        color = Colors.green;
        break;
      case "rejected":
        color = Colors.red;
        break;
      case "taken":
        color = Colors.blue;
        break;
      default:
        color = Colors.orange;
    }

    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status.toUpperCase(),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget actionButtons(BuildContext context, int id) {
    return Row(
      children: [

        Expanded(
          child: ElevatedButton(
            onPressed: () {
              context.read<AdminRequestBloc>().add(
                AdminRequestEvent.approve(id),
              );
            },
            child: const Text("Approve"),
          ),
        ),

        const SizedBox(width: 10),

        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: () {
              context.read<AdminRequestBloc>().add(
                AdminRequestEvent.reject(id),
              );
            },
            child: const Text("Reject"),
          ),
        ),

        const SizedBox(width: 10),

        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              context.read<AdminRequestBloc>().add(
                AdminRequestEvent.taken(id),
              );
            },
            child: const Text("Taken"),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Request Detail"),
      ),
      body: BlocBuilder<AdminRequestBloc, AdminRequestState>(
        builder: (context, state) {
          return state.when(

            initial: () => const SizedBox(),

            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),

            loaded: (_) => const SizedBox(),

            detailLoaded: (request) {

              return ListView(
                padding: const EdgeInsets.all(16),
                children: [

                  Text(
                    "Request #${request.id}",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      const Text("Status : "),
                      statusChip(request.status),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "User",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium,
                  ),

                  const SizedBox(height: 5),

                  Text(request.user?.name ?? "-"),
                  Text(request.user?.email ?? "-"),

                  const SizedBox(height: 20),

                  Text(
                    "Items",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium,
                  ),

                  const SizedBox(height: 10),

                  ...request.items!.map((item) {

                    final product = item.product;

                    return Card(
                      child: ListTile(
                        title: Text(product?.name ?? "-"),
                        subtitle: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [

                            Text("SKU : ${product?.sku ?? "-"}"),

                            Text(
                                "Qty : ${item.qty} ${product?.unit ?? ""}"),
                          ],
                        ),
                        trailing: Text(
                          "Stock ${product?.stock ?? 0}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }),

                  const SizedBox(height: 30),

                  actionButtons(context, request.id),
                ],
              );
            },

            success: (msg) => Center(child: Text(msg)),

            error: (msg) => Center(child: Text(msg)),
          );
        },
      ),
    );
  }
}