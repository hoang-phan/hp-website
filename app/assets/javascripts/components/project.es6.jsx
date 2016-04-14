class Project extends React.Component {
  render () {
    return (
      <div className='row project'>
        <div className='col-sm-4'>
          <h2>{this.props.project.start_month} - {this.props.project.start_year}</h2>
        </div>
        <div className='col-sm-8'>
          <h3>{this.props.project.name}</h3>
          <p>Developer</p>
        </div>
      </div>
    );
  }
}
