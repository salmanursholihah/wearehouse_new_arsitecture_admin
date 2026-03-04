// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_request/admin_request_bloc.dart';

// class AdminRequestListPage extends StatelessWidget {
//   const AdminRequestListPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Requests")),
//       body: BlocBuilder<AdminRequestBloc, AdminRequestState>(
//         builder: (context, state) {
//           return state.when(
//             initial: () => const SizedBox(),
//             loading: () => const Center(child: CircularProgressIndicator()),
//             loaded: (requests) {
//               return ListView.builder(
//                 itemCount: requests.length,
//                 itemBuilder: (context, index) {
//                   final r = requests[index];

//                   return ListTile(
//                     title: Text("Request #${r.id}"),
//                     subtitle: Text("Status: ${r.status}"),
//                     trailing: Text("${r.itemsCount} items"),
//                     onTap: () {
//                       context
//                           .read<AdminRequestBloc>()
//                           .add(AdminRequestEvent.getDetail(r.id));
//                     },
//                   );
//                 },
//               );
//             },
//             detailLoaded: (_) => const SizedBox(),
//             success: (_) => const SizedBox(),
//             error: (msg) => Center(child: Text(msg)),
//           );
//         },
//       ),
//     );
//   }
// }


//code 2
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_request/admin_request_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/admin_request_detail.dart';

class AdminRequestListPage extends StatefulWidget {
  const AdminRequestListPage({super.key});

  @override
  State<AdminRequestListPage> createState() => _AdminRequestListPageState();
}

class _AdminRequestListPageState extends State<AdminRequestListPage> {

  @override
  void initState() {
    super.initState();
    context.read<AdminRequestBloc>().add(
      const AdminRequestEvent.getRequests(),
    );
  }

  Color statusColor(String status) {
    switch (status) {
      case "approved":
        return Colors.green;
      case "rejected":
        return Colors.red;
      case "taken":
        return Colors.blue;
      default:
        return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Requests"),
      ),
      body: BlocBuilder<AdminRequestBloc, AdminRequestState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),

            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),

            loaded: (requests) {
              if (requests.isEmpty) {
                return const Center(
                  child: Text("Tidak ada request"),
                );
              }

              return ListView.builder(
                itemCount: requests.length,
                itemBuilder: (context, index) {
                  final request = requests[index];

                  return Card(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),
                    child: ListTile(
                      title: Text("Request #${request.id}"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          const SizedBox(height: 4),

                          Text(
                            request.user?.name ?? "-",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),

                          const SizedBox(height: 4),

                          Text("Items : ${request.itemsCount}"),
                        ],
                      ),

                      trailing: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: statusColor(request.status),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          request.status.toUpperCase(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => AdminRequestDetailPage(
                              id: request.id,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            },

            detailLoaded: (_) => const SizedBox(),

            success: (_) => const SizedBox(),

            error: (msg) => Center(
              child: Text(msg),
            ),
          );
        },
      ),
    );
  }
}