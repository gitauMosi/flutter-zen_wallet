import 'package:flutter/material.dart';

import '../../models/transaction.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _customAppBar(),
                const SizedBox(
                  height: 10,
                ),
                _balanceSection(context),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _customCardContainer(context, "Top Up", Icons.add, () {}),
                    _customCardContainer(
                        context, "Transfer", Icons.account_balance, () {}),
                    _customCardContainer(
                        context, "Pay", Icons.arrow_circle_up, () {}),
                    _customCardContainer(
                        context, "Request", Icons.arrow_circle_down, () {}),
                    _customCardContainer(
                        context, "History", Icons.receipt, () {}),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                _referralContainer(context),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      "Recent Transaction",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      "View More",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: ListView.builder(
                      itemCount: transactionList.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return _transactionCardTile(transactionList[index]);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile _transactionCardTile(Transaction transact) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        child: Icon(transact.senderid == "1"
            ? Icons.arrow_upward
            : Icons.arrow_downward),
      ),
      title: Text(transact.receiverid),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(transact.senderid != "1" ? "Received " : "Sent "),
          Text("⚈ ${transact.date}"),
        ],
      ),
      trailing: Text(
        "\$${transact.amount}",
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }

  Widget _referralContainer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Referral"),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).cardColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[300]!,
                    blurRadius: 10,
                    offset: const Offset(1, 4))
              ]),
          child: Row(
            children: [
              Image.asset(
                "assets/icons/mail.png",
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Refferal",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  const Text(
                      "Invite your friend to join on\non ZenWallet and get \$15.00")
                ],
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ],
          ),
        ),
      ],
    );
  }

  Widget _customCardContainer(
      BuildContext context, String name, IconData icon, Function() function) {
    return GestureDetector(
        onTap: function,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[200]!,
                        blurRadius: 10,
                        offset: const Offset(0, 4))
                  ]),
              child: Icon(
                icon,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(name)
          ],
        ));
  }

  Row _balanceSection(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Balance",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Text(
              "\$1,4343.45",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            )
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.visibility_outlined))
      ],
    );
  }

  Row _customAppBar() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 30,
          foregroundImage: NetworkImage(
              "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp"),
        ),
        const SizedBox(
          width: 10,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Faizur ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text("wen, Feb 14, 2024")
          ],
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
}
