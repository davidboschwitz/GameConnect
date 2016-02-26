part of game_connect_client.src.game_connect_client_component;

var mainContentComponent =
    react.registerComponent(() => new _MainContentComponent());

class _MainContentComponent
  extends flux.FluxComponent<GameConnectClientActions, GameConnectClientStores> {



  List <flux.Store> redrawOn() => [store.gameConnectClientStore];


  getCurrentComponent() {

    var currentComponent;

    //TODO:  Do something better than a switch statement
    switch (store.gameConnectClientStore.currentComponent) {
      case 'groupingScreenComponent':
        currentComponent = pairingScreenComponent({'actions':actions, 'store':store});
        break;
      case 'levelSelectScreenComponent':
        currentComponent = leveSelectScreenComponent({'actions':actions, 'store':store});
        break;
      case 'gameDisplayScreenComponent':
        currentComponent = gameDisplayComponent({'actions':actions, 'store':store});
        break;
      default:
        print(store.gameConnectClientStore.currentComponent);
        currentComponent = react.div({},"There was an error.  I'm not blaming anyone.  I'm just saying a problem exists.");
    }

    return currentComponent;
  }

  render() => react.div({'className': 'main-content-container'}, getCurrentComponent());
}
