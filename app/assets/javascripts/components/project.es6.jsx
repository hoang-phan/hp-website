class Project extends React.Component {
  render () {
    return (
      <div className='row project'>
        <div className='col-sm-4'>{this.props.project.start_month}/{this.props.project.start_year}</div>
        <div className='col-sm-8'>{this.props.project.name}</div>
      </div>
    );
  }
}
