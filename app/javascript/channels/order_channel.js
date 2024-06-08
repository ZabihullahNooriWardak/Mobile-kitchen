import consumer from "./consumer"

consumer.subscriptions.create({ channel: "OrderChannel", order_id: gon.order_id }, {
  received(data) {
    // Assuming data contains the new order status
    document.getElementById('order-status').innerText = data.status;

    // If updating in index view, update the specific order status
    if (document.getElementById(`order-status-${data.id}`)) {
      document.getElementById(`order-status-${data.id}`).innerText = data.status;
      document.getElementById(`order-status-${data.id}`).className = `badge bg-${data.status == 'pending' ? 'warning' : 'success'}`;
    }
  }
});
